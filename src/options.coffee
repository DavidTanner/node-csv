
module.exports = ->

  ###
  
  `options.from`: Options of the CSV input source
  ----------------------------------------------- 

  *   `delimiter`   Set the field delimiter, one character only, defaults to comma.
  *   `quote`       Set the field delimiter, one character only, defaults to double quotes.
  *   `escape`      Set the field delimiter, one character only, defaults to double quotes.
  *   `columns`     List of fields or true if autodiscovered in the first CSV line, default to null. Impact the `transform` argument and the `data` event by providing an object instead of an array, order matters, see the transform and the columns sections for more details.
  *   `flags`       Used to read a file stream, default to the r charactere.
  *   `encoding`    Encoding of the read stream, defaults to 'utf8', applied when a readable stream is created.
  *   `trim`        If true, ignore whitespace immediately around the delimiter, defaults to false.
  *   `ltrim`       If true, ignore whitespace immediately following the delimiter (i.e. left-trim all fields), defaults to false.
  *   `rtrim`       If true, ignore whitespace immediately preceding the delimiter (i.e. right-trim all fields), defaults to false.
  
  ###
  from:
    delimiter: ','
    quote: '"'
    escape: '"'
    columns: null
    flags: 'r'
    encoding: 'utf8'
    trim: false
    ltrim: false
    rtrim: false
  
  ###
  
  `options.to`: Options of the CSV output source
  -----------------------------------------------

  *   `delimiter`   Set the field delimiter, one character only, defaults to `options.from.delimiter` which is a comma.
  *   `quote`       Defaults to the quote read option.
  *   `quoted`      Boolean, default to false, quote all the fields even if not required.
  *   `escape`      Defaults to the escape read option.
  *   `columns`     List of fields, applied when `transform` returns an object, order matters, see the transform and the columns sections below.
  *   `header`      Display the column names on the first line if the columns option is provided.
  *   `lineBreaks`  String used to delimit record rows or a special value; special values are 'auto', 'unix', 'mac', 'windows', 'unicode'; defaults to 'auto' (discovered in source or 'unix' if no source is specified).
  *   `flags`       Defaults to 'w', 'w' to create or overwrite an file, 'a' to append to a file. Applied when using the `toPath` method.
  *   `newColumns`  If the `columns` option is not specified (which means columns will be taken from the reader options, will automatically append new columns if they are added during `transform()`.
  *   `end`         Prevent calling `end` on the destination, so that destination is no longer writable, similar to passing `{end: false}` option in `stream.pipe()`.

  ###
  to:
    delimiter: null
    quote: null
    quoted: false
    escape: null
    columns: null
    header: false
    lineBreaks: null
    flags: 'w'
    encoding: 'utf8'
    newColumns: false
    end: true

