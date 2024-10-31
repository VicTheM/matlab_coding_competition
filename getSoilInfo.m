% GETSOILINFO Retrieve soil information from a table based on soil type.
%
%   result = GETSOILINFO(soilTypeName, soilTable) returns data for a given 
%   soil type from soilTable. If no soilTypeName is specified, it returns
%   the column of soil types.
%
%   Inputs:
%       soilTypeName - Name of the soil type (case-insensitive).
%       soilTable    - Table containing soil data with a 'SoilType' column.
%
%   Output:
%       result - Row of data for the specified soil type, or the column of 
%                soil types if no name is provided.
%
%   Examples:
%       % Get all soil type names
%       soilTypes = GETSOILINFO([], soilTable);
%
%       % Get information for 'Sand'
%       soilInfo = GETSOILINFO('Sand', soilTable);

function result = getSoilInfoo(soilTypeName, soilTable)
    if nargin < 1 
        error('Please provide at least the soilTable argument.');
    elseif nargin == 1
        soilTable = soilTypeName;
        result = soilTable.SoilType;
    else
        rowIndex = strcmpi(soilTable.SoilType, soilTypeName);
        
        if any(rowIndex)
            result = soilTable(rowIndex, :);
        else
            result = soilTable.SoilType;
        end
    end
end

f = getSoilInfoo(soilTable)