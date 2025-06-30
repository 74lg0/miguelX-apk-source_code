.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;
.super Ljava/lang/Object;
.source "MimeVersionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field public static final INITIAL_VERSION_VALUE:I = -0x1

.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field private jj_ntk:I

.field private major:I

.field private minor:I

.field public token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v3, p1, p2, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v0, v2, p1

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    new-instance v3, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v3, p1, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {p1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v0, v2, p1

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v0, v1, p1

    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object p1

    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_0()V
    .locals 1

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    return-void
.end method

.method private final jj_ntk()I
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    return v0

    :cond_0
    iget v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    return v0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput p1, v0, p2

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput p1, v1, v0

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput p1, v1, v0

    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
    .locals 7

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/16 v0, 0x15

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    aput-boolean v4, v1, v3

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aget v3, v3, v2

    iget v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    if-ne v3, v5, :cond_3

    move v3, v2

    :goto_1
    const/16 v5, 0x20

    if-ge v3, v5, :cond_3

    sget-object v5, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    aget v5, v5, v2

    shl-int v6, v4, v3

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    aput-boolean v4, v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_5

    aget-boolean v5, v1, v3

    if-eqz v5, :cond_4

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    aput v3, v5, v2

    iget-object v6, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    :goto_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    return v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v0

    :try_start_0
    iget-object v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-void
.end method
