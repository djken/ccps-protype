class ApplicationController < ActionController::Base

    def onOff
        @horaire = Horaire.find(params[:id])
        @testt = @horaire.sessionencour.etatsession
    end

end
