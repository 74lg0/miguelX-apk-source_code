.class public Lorg/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final HT:I = 0x9

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset; = null

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/util/CharsetUtil$Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static decodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static encodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-class v0, Lorg/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    const/16 v0, 0x93

    new-array v0, v0, [Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v2, "ISO_8859-1:1987"

    const-string v3, "iso-ir-100"

    const-string v4, "ISO_8859-1"

    const-string v5, "latin1"

    const-string v6, "l1"

    const-string v7, "IBM819"

    const-string v8, "CP819"

    const-string v9, "csISOLatin1"

    const-string v10, "8859_1"

    const-string v11, "819"

    const-string v12, "IBM-819"

    const-string v13, "ISO8859-1"

    const-string v14, "ISO_8859_1"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO8859_1"

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-2:1987"

    const-string v7, "iso-ir-101"

    const-string v8, "ISO_8859-2"

    const-string v9, "latin2"

    const-string v10, "l2"

    const-string v11, "csISOLatin2"

    const-string v12, "8859_2"

    const-string v13, "iso8859_2"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISO8859_2"

    const-string v7, "ISO-8859-2"

    invoke-direct {v1, v6, v7, v3, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-3:1988"

    const-string v7, "iso-ir-109"

    const-string v8, "ISO_8859-3"

    const-string v9, "latin3"

    const-string v10, "l3"

    const-string v11, "csISOLatin3"

    const-string v12, "8859_3"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISO8859_3"

    const-string v7, "ISO-8859-3"

    invoke-direct {v1, v6, v7, v3, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-4:1988"

    const-string v7, "iso-ir-110"

    const-string v8, "ISO_8859-4"

    const-string v9, "latin4"

    const-string v10, "l4"

    const-string v11, "csISOLatin4"

    const-string v12, "8859_4"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISO8859_4"

    const-string v7, "ISO-8859-4"

    invoke-direct {v1, v6, v7, v3, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-5:1988"

    const-string v7, "iso-ir-144"

    const-string v8, "ISO_8859-5"

    const-string v9, "cyrillic"

    const-string v10, "csISOLatinCyrillic"

    const-string v11, "8859_5"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISO8859_5"

    const-string v7, "ISO-8859-5"

    invoke-direct {v1, v6, v7, v3, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-6:1987"

    const-string v7, "iso-ir-127"

    const-string v8, "ISO_8859-6"

    const-string v9, "ECMA-114"

    const-string v10, "ASMO-708"

    const-string v11, "arabic"

    const-string v12, "csISOLatinArabic"

    const-string v13, "8859_6"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISO8859_6"

    const-string v7, "ISO-8859-6"

    invoke-direct {v1, v6, v7, v3, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-7:1987"

    const-string v7, "iso-ir-126"

    const-string v8, "ISO_8859-7"

    const-string v9, "ELOT_928"

    const-string v10, "ECMA-118"

    const-string v11, "greek"

    const-string v12, "greek8"

    const-string v13, "csISOLatinGreek"

    const-string v14, "8859_7"

    const-string v15, "sun_eu_greek"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO8859_7"

    const-string v8, "ISO-8859-7"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v6, 0x6

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-8:1988"

    const-string v7, "iso-ir-138"

    const-string v8, "ISO_8859-8"

    const-string v9, "hebrew"

    const-string v10, "csISOLatinHebrew"

    const-string v11, "8859_8"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO8859_8"

    const-string v8, "ISO-8859-8"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/4 v6, 0x7

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-9:1989"

    const-string v7, "iso-ir-148"

    const-string v8, "ISO_8859-9"

    const-string v9, "latin5"

    const-string v10, "l5"

    const-string v11, "csISOLatin5"

    const-string v12, "8859_9"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO8859_9"

    const-string v8, "ISO-8859-9"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO-8859-13"

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "ISO8859_13"

    invoke-direct {v1, v8, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x9

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO_8859-15"

    const-string v7, "Latin-9"

    const-string v8, "8859_15"

    const-string v9, "csISOlatin9"

    const-string v10, "IBM923"

    const-string v11, "cp923"

    const-string v12, "923"

    const-string v13, "L9"

    const-string v14, "IBM-923"

    const-string v15, "ISO8859-15"

    const-string v16, "LATIN9"

    const-string v17, "LATIN0"

    const-string v18, "csISOlatin0"

    const-string v19, "ISO8859_15_FDIS"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO8859_15"

    const-string v8, "ISO-8859-15"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csKOI8R"

    const-string v7, "koi8"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "KOI8_R"

    const-string v8, "KOI8-R"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xb

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ANSI_X3.4-1968"

    const-string v7, "iso-ir-6"

    const-string v8, "ANSI_X3.4-1986"

    const-string v9, "ISO_646.irv:1991"

    const-string v10, "ISO646-US"

    const-string v11, "us"

    const-string v12, "IBM367"

    const-string v13, "cp367"

    const-string v14, "csASCII"

    const-string v15, "ascii7"

    const-string v16, "646"

    const-string v17, "iso_646.irv:1983"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASCII"

    const-string v8, "US-ASCII"

    invoke-direct {v1, v7, v8, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xc

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "UTF8"

    const-string v9, "UTF-8"

    invoke-direct {v1, v7, v9, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xd

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "UTF_16"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-16"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xe

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "UTF_16BE"

    const-string v7, "ISO-10646-UCS-2"

    const-string v10, "X-UTF-16BE"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnicodeBigUnmarked"

    const-string v10, "UTF-16BE"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0xf

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "UTF_16LE"

    const-string v7, "X-UTF-16LE"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnicodeLittleUnmarked"

    const-string v10, "UTF-16LE"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x10

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "BIG-FIVE"

    const-string v7, "BIGFIVE"

    const-string v10, "csBig5"

    const-string v11, "CN-Big5"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Big5"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x11

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "big5hkscs"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Big5_HKSCS"

    const-string v10, "Big5-HKSCS"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x12

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v10, "csEUCPkdFmtJapanese"

    const-string v11, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    const-string v12, "eucjis"

    const-string v13, "x-eucjp"

    const-string v14, "eucjp"

    const-string v15, "x-euc-jp"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "EUC_JP"

    const-string v10, "EUC-JP"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x13

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v10, "csEUCKR"

    const-string v11, "ksc5601"

    const-string v12, "5601"

    const-string v13, "ksc5601_1987"

    const-string v14, "ksc_5601"

    const-string v15, "ksc5601-1987"

    const-string v16, "ks_c_5601-1987"

    const-string v17, "euckr"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "EUC_KR"

    const-string v10, "EUC-KR"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x14

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "gb18030-2000"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "GB18030"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x15

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v10, "x-EUC-CN"

    const-string v11, "csGB2312"

    const-string v12, "euccn"

    const-string v13, "euc-cn"

    const-string v14, "gb2312-80"

    const-string v15, "gb2312-1980"

    const-string v16, "CN-GB"

    const-string v17, "CN-GB-ISOIR165"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "EUC_CN"

    const-string v10, "GB2312"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x16

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ms_936"

    const-string v7, "x-mswin-936"

    const-string v10, "CP936"

    const-string v11, "MS936"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "GBK"

    const-string v10, "windows-936"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x17

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-nl"

    const-string v7, "csIBM037"

    const-string v10, "ebcdic-cp-us"

    const-string v11, "ebcdic-cp-ca"

    const-string v12, "ebcdic-cp-wt"

    filled-new-array {v10, v11, v12, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp037"

    const-string v10, "IBM037"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x18

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csIBM273"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp273"

    const-string v10, "IBM273"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x19

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "EBCDIC-CP-NO"

    const-string v7, "csIBM277"

    const-string v10, "EBCDIC-CP-DK"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp277"

    const-string v10, "IBM277"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-se"

    const-string v7, "csIBM278"

    const-string v10, "CP278"

    const-string v11, "ebcdic-cp-fi"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp278"

    const-string v10, "IBM278"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-it"

    const-string v7, "csIBM280"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp280"

    const-string v10, "IBM280"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-es"

    const-string v7, "csIBM284"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp284"

    const-string v10, "IBM284"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-gb"

    const-string v7, "csIBM285"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp285"

    const-string v10, "IBM285"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-fr"

    const-string v7, "csIBM297"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp297"

    const-string v10, "IBM297"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x1f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-ar1"

    const-string v7, "csIBM420"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp420"

    const-string v10, "IBM420"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x20

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-he"

    const-string v7, "csIBM424"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp424"

    const-string v10, "IBM424"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x21

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "437"

    const-string v7, "csPC8CodePage437"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp437"

    const-string v10, "IBM437"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x22

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-ch"

    const-string v7, "csIBM500"

    const-string v10, "ebcdic-cp-be"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp500"

    const-string v10, "IBM500"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x23

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csPC775Baltic"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp775"

    const-string v10, "IBM775"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x24

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "IBM-Thai"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp838"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x25

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "850"

    const-string v7, "csPC850Multilingual"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp850"

    const-string v10, "IBM850"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x26

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "852"

    const-string v7, "csPCp852"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp852"

    const-string v10, "IBM852"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x27

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "855"

    const-string v7, "csIBM855"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp855"

    const-string v10, "IBM855"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x28

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "857"

    const-string v7, "csIBM857"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp857"

    const-string v10, "IBM857"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x29

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP00858"

    const-string v7, "PC-Multilingual-850+euro"

    const-string v10, "CCSID00858"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp858"

    const-string v10, "IBM00858"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "860"

    const-string v7, "csIBM860"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp860"

    const-string v10, "IBM860"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cp-is"

    const-string v7, "csIBM861"

    const-string v10, "861"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp861"

    const-string v10, "IBM861"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "862"

    const-string v7, "csPC862LatinHebrew"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp862"

    const-string v10, "IBM862"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "863"

    const-string v7, "csIBM863"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp863"

    const-string v10, "IBM863"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cp864"

    const-string v7, "csIBM864"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp864"

    const-string v10, "IBM864"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "865"

    const-string v7, "csIBM865"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp865"

    const-string v10, "IBM865"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x30

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "866"

    const-string v7, "csIBM866"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp866"

    const-string v10, "IBM866"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x31

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cp-ar"

    const-string v7, "csIBM868"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp868"

    const-string v10, "IBM868"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x32

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cp-gr"

    const-string v7, "csIBM869"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp869"

    const-string v10, "IBM869"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x33

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-yu"

    const-string v7, "csIBM870"

    const-string v10, "ebcdic-cp-roece"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp870"

    const-string v10, "IBM870"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x34

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-is"

    const-string v7, "csIBM871"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp871"

    const-string v10, "IBM871"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x35

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-cp-ar2"

    const-string v7, "csIBM918"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp918"

    const-string v10, "IBM918"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x36

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csIBM1026"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1026"

    const-string v10, "IBM1026"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x37

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "IBM-1047"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1047"

    const-string v10, "IBM1047"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x38

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01140"

    const-string v7, "ebcdic-us-37+euro"

    const-string v10, "CCSID01140"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1140"

    const-string v10, "IBM01140"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x39

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01141"

    const-string v7, "ebcdic-de-273+euro"

    const-string v10, "CCSID01141"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1141"

    const-string v10, "IBM01141"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-dk-277+euro"

    const-string v7, "ebcdic-no-277+euro"

    const-string v10, "CCSID01142"

    const-string v11, "CP01142"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1142"

    const-string v10, "IBM01142"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ebcdic-fi-278+euro"

    const-string v7, "ebcdic-se-278+euro"

    const-string v10, "CCSID01143"

    const-string v11, "CP01143"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1143"

    const-string v10, "IBM01143"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01144"

    const-string v7, "ebcdic-it-280+euro"

    const-string v10, "CCSID01144"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1144"

    const-string v10, "IBM01144"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01145"

    const-string v7, "ebcdic-es-284+euro"

    const-string v10, "CCSID01145"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1145"

    const-string v10, "IBM01145"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01146"

    const-string v7, "ebcdic-gb-285+euro"

    const-string v10, "CCSID01146"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1146"

    const-string v10, "IBM01146"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x3f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01147"

    const-string v7, "ebcdic-fr-297+euro"

    const-string v10, "CCSID01147"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1147"

    const-string v10, "IBM01147"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x40

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01148"

    const-string v7, "ebcdic-international-500+euro"

    const-string v10, "CCSID01148"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1148"

    const-string v10, "IBM01148"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x41

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "CP01149"

    const-string v7, "ebcdic-is-871+euro"

    const-string v10, "CCSID01149"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1149"

    const-string v10, "IBM01149"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x42

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1250"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1250"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x43

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1251"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1251"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x44

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1252"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1252"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x45

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1253"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1253"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x46

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1254"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1254"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x47

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1255"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1255"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x48

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1256"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1256"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x49

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1257"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1257"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "windows-1258"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "Cp1258"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO-2022-CN"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "ISO2022CN"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "jis_encoding"

    const-string v7, "csjisencoding"

    const-string v10, "csISO2022JP"

    const-string v11, "JIS"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO2022JP"

    const-string v10, "ISO-2022-JP"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csISO2022KR"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISO2022KR"

    const-string v10, "ISO-2022-KR"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "JIS0201"

    const-string v7, "csHalfWidthKatakana"

    const-string v10, "X0201"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "JIS_X0201"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x4f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "JIS0212"

    const-string v7, "csISO159JISX02121990"

    const-string v10, "iso-ir-159"

    const-string v11, "x0212"

    filled-new-array {v10, v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "JIS_X0212-1990"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x50

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v10, "x-JIS0208"

    const-string v11, "JIS0208"

    const-string v12, "csISO87JISX0208"

    const-string v13, "x0208"

    const-string v14, "JIS_X0208-1983"

    const-string v15, "iso-ir-87"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "JIS_C6626-1983"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x51

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-sjis"

    const-string v7, "pck"

    const-string v10, "MS_Kanji"

    const-string v11, "csShiftJIS"

    const-string v12, "shift-jis"

    filled-new-array {v10, v11, v12, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "SJIS"

    const-string v10, "Shift_JIS"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x52

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "TIS-620"

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "TIS620"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x53

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "csWindows31J"

    const-string v7, "x-ms-cp932"

    const-string v10, "windows-932"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MS932"

    const-string v10, "Windows-31J"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x54

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cns11643"

    const-string v7, "euctw"

    const-string v10, "x-EUC-TW"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "EUC_TW"

    const-string v10, "EUC-TW"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x55

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ksc5601-1992"

    const-string v7, "ksc5601_1992"

    const-string v10, "johab"

    const-string v11, "cp1361"

    const-string v12, "ms1361"

    filled-new-array {v10, v11, v12, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "x-Johab"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x56

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, ""

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "MS950_HKSCS"

    invoke-direct {v1, v10, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x57

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "cp874"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MS874"

    const-string v10, "windows-874"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x58

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ms_949"

    const-string v7, "x-windows-949"

    const-string v10, "windows949"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MS949"

    const-string v10, "windows-949"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x59

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-windows-950"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MS950"

    const-string v10, "windows-950"

    invoke-direct {v1, v7, v10, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp737"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp856"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp875"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp921"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp922"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x5f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp930"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x60

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp933"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x61

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp935"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x62

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp937"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x63

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp939"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x64

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp942"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x65

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp942C"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x66

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp943"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x67

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp943C"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x68

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp948"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x69

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp949"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp949C"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp950"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp964"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp970"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1006"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x6f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1025"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x70

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1046"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x71

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1097"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x72

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1098"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x73

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1112"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x74

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1122"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x75

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1123"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x76

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1124"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x77

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1381"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x78

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp1383"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x79

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Cp33722"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "Big5_Solaris"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "EUC_JP_LINUX"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "EUC_JP_Solaris"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-ISCII91"

    const-string v7, "iscii"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISCII91"

    invoke-direct {v1, v7, v5, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO2022_CN_CNS"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x7f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "ISO2022_CN_GB"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x80

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "x-iso-8859-11"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x81

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "JISAutoDetect"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x82

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacArabic"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x83

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacCentralEurope"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x84

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacCroatian"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x85

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacCyrillic"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x86

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacDingbat"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x87

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacGreek"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v6, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x88

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacHebrew"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x89

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacIceland"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8a

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MAC"

    const-string v7, "csMacintosh"

    const-string v10, "Macintosh"

    filled-new-array {v10, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MacRoman"

    invoke-direct {v1, v7, v7, v6, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8b

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacRomania"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8c

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacSymbol"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8d

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacThai"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8e

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacTurkish"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x8f

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "MacUkraine"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x90

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "UnicodeBig"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x91

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v6, "UnicodeLittle"

    new-array v7, v2, [Ljava/lang/String;

    invoke-direct {v1, v6, v5, v7, v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v6, 0x92

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    sput-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    sput-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    sput-object v5, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v3, v1

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v7, "dummy"

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v10, v2

    :goto_2
    if-ge v10, v7, :cond_2

    aget-object v11, v6, v10

    sget-object v12, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Character sets which support decoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Character sets which support encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6

    const-string v0, ", fallback to ISO-8859-1: "

    const-string v1, "ISO-8859-1"

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported charset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v2

    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal charset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static isASCII(C)Z
    .locals 1

    const v0, 0xff80

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isASCII(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEncodingSupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
