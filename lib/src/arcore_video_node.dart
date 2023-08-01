import 'dart:typed_data';

class ArCoreVideoNode {
  final String? url;
  final Uint8List? bytes;
  final int? width;
  final int? height;

  ArCoreVideoNode({
    this.url,
    this.bytes,
    this.width,
    this.height,
  })  : assert((url != null && url.isNotEmpty) || bytes != null),
        assert(width != null && width > 0),
        assert(height != null && height > 0);

  Map<String, dynamic> toMap() => <String, dynamic>{
        'url': url,
        'bytes': bytes,
        'width': width,
        'height': height,
      }..removeWhere((String k, dynamic v) => v == null);
}
