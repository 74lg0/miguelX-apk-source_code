.class public final enum Lorg/junit/runners/MethodSorters;
.super Ljava/lang/Enum;
.source "MethodSorters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/junit/runners/MethodSorters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/junit/runners/MethodSorters;

.field public static final enum DEFAULT:Lorg/junit/runners/MethodSorters;

.field public static final enum JVM:Lorg/junit/runners/MethodSorters;

.field public static final enum NAME_ASCENDING:Lorg/junit/runners/MethodSorters;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/junit/runners/MethodSorters;

    const/4 v1, 0x0

    sget-object v2, Lorg/junit/internal/MethodSorter;->NAME_ASCENDING:Ljava/util/Comparator;

    const-string v3, "NAME_ASCENDING"

    invoke-direct {v0, v3, v1, v2}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lorg/junit/runners/MethodSorters;->NAME_ASCENDING:Lorg/junit/runners/MethodSorters;

    new-instance v1, Lorg/junit/runners/MethodSorters;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "JVM"

    invoke-direct {v1, v4, v2, v3}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v1, Lorg/junit/runners/MethodSorters;->JVM:Lorg/junit/runners/MethodSorters;

    new-instance v2, Lorg/junit/runners/MethodSorters;

    const/4 v3, 0x2

    sget-object v4, Lorg/junit/internal/MethodSorter;->DEFAULT:Ljava/util/Comparator;

    const-string v5, "DEFAULT"

    invoke-direct {v2, v5, v3, v4}, Lorg/junit/runners/MethodSorters;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v2, Lorg/junit/runners/MethodSorters;->DEFAULT:Lorg/junit/runners/MethodSorters;

    filled-new-array {v0, v1, v2}, [Lorg/junit/runners/MethodSorters;

    move-result-object v0

    sput-object v0, Lorg/junit/runners/MethodSorters;->$VALUES:[Lorg/junit/runners/MethodSorters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/junit/runners/MethodSorters;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/junit/runners/MethodSorters;
    .locals 1

    const-class v0, Lorg/junit/runners/MethodSorters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/junit/runners/MethodSorters;

    return-object p0
.end method

.method public static final values()[Lorg/junit/runners/MethodSorters;
    .locals 1

    sget-object v0, Lorg/junit/runners/MethodSorters;->$VALUES:[Lorg/junit/runners/MethodSorters;

    invoke-virtual {v0}, [Lorg/junit/runners/MethodSorters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/junit/runners/MethodSorters;

    return-object v0
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/junit/runners/MethodSorters;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
