.class synthetic Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->values()[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
