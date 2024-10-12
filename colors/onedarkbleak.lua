for k in pairs(package.loaded) do
    if k:match(".*onedarkbleak.*") then package.loaded[k] = nil end
end

require('onedarkbleak').setup()
require('onedarkbleak').colorscheme()
