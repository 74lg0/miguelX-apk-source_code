.class public final enum Lcom/braze/configuration/CachedConfigurationProvider$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/configuration/CachedConfigurationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/configuration/CachedConfigurationProvider$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/braze/configuration/CachedConfigurationProvider$b;",
        "",
        "",
        "b",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "type",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INTEGER",
        "COLOR",
        "BOOLEAN",
        "STRING",
        "DRAWABLE_IDENTIFIER",
        "STRING_ARRAY",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum c:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field public static final enum d:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field public static final enum e:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field public static final enum f:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field public static final enum g:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field public static final enum h:Lcom/braze/configuration/CachedConfigurationProvider$b;

.field private static final synthetic i:[Lcom/braze/configuration/CachedConfigurationProvider$b;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x0

    const-string v2, "integer"

    const-string v3, "INTEGER"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->c:Lcom/braze/configuration/CachedConfigurationProvider$b;

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x1

    const-string v2, "color"

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->d:Lcom/braze/configuration/CachedConfigurationProvider$b;

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x2

    const-string v2, "bool"

    const-string v3, "BOOLEAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->e:Lcom/braze/configuration/CachedConfigurationProvider$b;

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x3

    const-string v2, "string"

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->f:Lcom/braze/configuration/CachedConfigurationProvider$b;

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x4

    const-string v2, "drawable"

    const-string v3, "DRAWABLE_IDENTIFIER"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->g:Lcom/braze/configuration/CachedConfigurationProvider$b;

    new-instance v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    const/4 v1, 0x5

    const-string v2, "array"

    const-string v3, "STRING_ARRAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/configuration/CachedConfigurationProvider$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->h:Lcom/braze/configuration/CachedConfigurationProvider$b;

    invoke-static {}, Lcom/braze/configuration/CachedConfigurationProvider$b;->a()[Lcom/braze/configuration/CachedConfigurationProvider$b;

    move-result-object v0

    sput-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->i:[Lcom/braze/configuration/CachedConfigurationProvider$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/braze/configuration/CachedConfigurationProvider$b;->b:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/braze/configuration/CachedConfigurationProvider$b;
    .locals 6

    sget-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->c:Lcom/braze/configuration/CachedConfigurationProvider$b;

    sget-object v1, Lcom/braze/configuration/CachedConfigurationProvider$b;->d:Lcom/braze/configuration/CachedConfigurationProvider$b;

    sget-object v2, Lcom/braze/configuration/CachedConfigurationProvider$b;->e:Lcom/braze/configuration/CachedConfigurationProvider$b;

    sget-object v3, Lcom/braze/configuration/CachedConfigurationProvider$b;->f:Lcom/braze/configuration/CachedConfigurationProvider$b;

    sget-object v4, Lcom/braze/configuration/CachedConfigurationProvider$b;->g:Lcom/braze/configuration/CachedConfigurationProvider$b;

    sget-object v5, Lcom/braze/configuration/CachedConfigurationProvider$b;->h:Lcom/braze/configuration/CachedConfigurationProvider$b;

    filled-new-array/range {v0 .. v5}, [Lcom/braze/configuration/CachedConfigurationProvider$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/configuration/CachedConfigurationProvider$b;
    .locals 1

    const-class v0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/configuration/CachedConfigurationProvider$b;

    return-object p0
.end method

.method public static values()[Lcom/braze/configuration/CachedConfigurationProvider$b;
    .locals 1

    sget-object v0, Lcom/braze/configuration/CachedConfigurationProvider$b;->i:[Lcom/braze/configuration/CachedConfigurationProvider$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/configuration/CachedConfigurationProvider$b;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/configuration/CachedConfigurationProvider$b;->b:Ljava/lang/String;

    return-object v0
.end method
