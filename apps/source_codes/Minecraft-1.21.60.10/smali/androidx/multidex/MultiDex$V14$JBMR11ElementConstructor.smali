.class Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;
.super Ljava/lang/Object;
.source "MultiDex.java"

# interfaces
.implements Landroidx/multidex/MultiDex$V14$ElementConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex$V14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JBMR11ElementConstructor"
.end annotation


# instance fields
.field private final elementConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/File;

    aput-object v2, v0, v1

    const-class v1, Ljava/io/File;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v3, Ldalvik/system/DexFile;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;->elementConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/multidex/MultiDex$V14$JBMR11ElementConstructor;->elementConstructor:Ljava/lang/reflect/Constructor;

    filled-new-array {p1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
