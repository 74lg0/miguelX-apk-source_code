.class synthetic Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;
.super Ljava/lang/Object;
.source "XLEAnimationDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

.field static final synthetic $SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->values()[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

    sget-object v3, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

    sget-object v4, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->values()[Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    :try_start_3
    sget-object v4, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Alpha:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    sget-object v3, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Scale:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionX:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->PositionY:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->Height:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
