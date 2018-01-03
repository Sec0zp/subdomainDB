class Core

  COMPONENTS = ['models','controllers']

  def initialize
    COMPONENTS.each do |directory|
      Dir["./lib/#{directory}/*.rb"].each do |file|
        require file
      end
    end
  end
end
