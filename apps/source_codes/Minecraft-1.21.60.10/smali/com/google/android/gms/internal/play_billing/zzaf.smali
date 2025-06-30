.class final Lcom/google/android/gms/internal/play_billing/zzaf;
.super Lcom/google/android/gms/internal/play_billing/zzx;
.source "com.android.billingclient:billing@@6.0.1"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzx;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzaf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzaf;->zza:Lcom/google/android/gms/internal/play_billing/zzx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    return-void
.end method

.method static zzf(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzw;)Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzaf;->zza:Lcom/google/android/gms/internal/play_billing/zzx;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzaf;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaf;

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzaf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    array-length v5, v1

    shr-int/2addr v5, v4

    const-string v6, "index"

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzm;->zzb(IILjava/lang/String;)I

    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v7, 0x2ccccccc

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    :goto_0
    add-int/2addr v7, v7

    int-to-double v8, v7

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    int-to-double v10, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    goto :goto_0

    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_17

    :cond_3
    if-ne v0, v4, :cond_4

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_4
    add-int/lit8 v6, v7, -0x1

    const/16 v8, 0x80

    const/4 v9, -0x1

    if-gt v7, v8, :cond_a

    new-array v7, v7, [B

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([BB)V

    move v8, v3

    move v9, v8

    :goto_1
    if-ge v8, v0, :cond_8

    add-int v10, v9, v9

    add-int v11, v8, v8

    aget-object v12, v1, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v11, v4

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v13

    :goto_2
    and-int/2addr v13, v6

    aget-byte v14, v7, v13

    const/16 v15, 0xff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_6

    int-to-byte v14, v10

    aput-byte v14, v7, v13

    if-ge v9, v8, :cond_5

    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v11, v1, v10

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    xor-int/lit8 v2, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzv;

    aget-object v13, v1, v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v2

    move-object v2, v10

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    if-ne v9, v0, :cond_9

    :goto_4
    move-object v2, v7

    goto/16 :goto_b

    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b

    :cond_a
    const v8, 0x8000

    if-gt v7, v8, :cond_10

    new-array v7, v7, [S

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([SS)V

    move v8, v3

    move v9, v8

    :goto_5
    if-ge v8, v0, :cond_e

    add-int v10, v9, v9

    add-int v11, v8, v8

    aget-object v12, v1, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v11, v4

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v13

    :goto_6
    and-int/2addr v13, v6

    aget-short v14, v7, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_c

    int-to-short v14, v10

    aput-short v14, v7, v13

    if-ge v9, v8, :cond_b

    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v11, v1, v10

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    xor-int/lit8 v2, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzv;

    aget-object v13, v1, v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v2

    move-object v2, v10

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_e
    if-ne v9, v0, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :cond_10
    new-array v7, v7, [I

    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    move v8, v3

    move v10, v8

    :goto_8
    if-ge v8, v0, :cond_14

    add-int v11, v10, v10

    add-int v12, v8, v8

    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v12, v4

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/zzp;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v14

    :goto_9
    and-int/2addr v14, v6

    aget v15, v7, v14

    if-ne v15, v9, :cond_12

    aput v11, v7, v14

    if-ge v10, v8, :cond_11

    aput-object v13, v1, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v12, v1, v11

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_12
    aget-object v9, v1, v15

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    xor-int/lit8 v2, v15, 0x1

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzv;

    aget-object v11, v1, v2

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v1, v2

    move-object v2, v9

    :goto_a
    add-int/lit8 v8, v8, 0x1

    const/4 v9, -0x1

    goto :goto_8

    :cond_13
    add-int/lit8 v14, v14, 0x1

    const/4 v9, -0x1

    goto :goto_9

    :cond_14
    if-ne v10, v0, :cond_15

    goto/16 :goto_4

    :cond_15
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    :goto_b
    instance-of v6, v2, [Ljava/lang/Object;

    if-eqz v6, :cond_16

    check-cast v2, [Ljava/lang/Object;

    aget-object v0, v2, v5

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzv;

    move-object/from16 v5, p2

    iput-object v0, v5, Lcom/google/android/gms/internal/play_billing/zzw;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    aget-object v0, v2, v3

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move/from16 v16, v2

    move-object v2, v0

    move/from16 v0, v16

    :cond_16
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzaf;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzaf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v3

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzc:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzb:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p1, v3

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v2, v0, [B

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, [B

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v6

    aget-byte v5, v2, v0

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4

    goto :goto_0

    :cond_4
    aget-object v7, v1, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v5, 0x1

    aget-object p1, v1, p1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, [S

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v0

    :goto_2
    and-int/2addr v0, v6

    aget-short v5, v2, v0

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_7

    goto :goto_0

    :cond_7
    aget-object v7, v1, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v5, 0x1

    aget-object p1, v1, p1

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    check-cast v0, [I

    array-length v2, v0

    add-int/2addr v2, v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzq;->zza(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v2

    aget v7, v0, v6

    if-ne v7, v5, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v8, v1, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    xor-int/lit8 p1, v7, 0x1

    aget-object p1, v1, p1

    :goto_4
    if-nez p1, :cond_b

    return-object v3

    :cond_b
    return-object p1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    return v0
.end method

.method final zza()Lcom/google/android/gms/internal/play_billing/zzr;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzae;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzae;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/play_billing/zzy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzac;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzac;-><init>(Lcom/google/android/gms/internal/play_billing/zzx;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/play_billing/zzy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzae;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzae;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzad;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzad;-><init>(Lcom/google/android/gms/internal/play_billing/zzx;Lcom/google/android/gms/internal/play_billing/zzu;)V

    return-object v1
.end method
