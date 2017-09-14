function qMRusage(obj,mstr)
if nargin<2, mstr=methods(obj); end
if ischar(mstr), mstr = {mstr}; end
for im=1:length(mstr)
    mess = {};
    switch mstr{im}
        case 'equation'
            mess = {'Compute MR signal',...
                'USAGE: Smodel = equation(obj, x)',...
                ['x: [struct] OR [vector] containing Model parameters: ' cell2str_v2(obj.xnames)]};
            
        case 'fit'
            mess = {'Fit experimental data',...
                'USAGE: Smodel = fit(obj, data)',...
                ['data: [struct] containing: ' cell2str_v2(obj.MRIinputs)]};
            
        case 'plotmodel'

            mess = {'Plot model equation (and fitting)',...
                'USAGE: Smodel = plotmodel(obj, x)',...
                '       Smodel = plotmodel(obj, x, data)',...
                ['x: [struct] OR [vector] containing fit results: ' cell2str_v2(obj.xnames)],...
                ['data: [struct] containing: ' cell2str_v2(obj.MRIinputs)]};
            
        case 'Sim_Single_Voxel_Curve'
            Opt.SNR = 50;
            try
                Opt = button2opts(obj.Sim_Single_Voxel_Curve_buttons);
            end
            mess = {'Simulates Single Voxel',...
                'USAGE: FitResults = Sim_Single_Voxel_Curve(obj, x)',...
                '       FitResults = Sim_Single_Voxel_Curve(obj, x, Opt,display)',...
                ['x: [struct] OR [vector] containing fit results: ' cell2str_v2(obj.xnames)],...
                 'Opt.SNR: [float] signal to noise ratio',...
                 'display: [binary] 1=display, 0=nodisplay'};

    end
    if ~isempty(mess)
        disp(['<strong>' mstr{im} '</strong>'])
        for imess=1:length(mess)
            disp(['   ' mess{imess}])
        end
        disp(' ')
    end
end
