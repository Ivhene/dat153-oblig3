.class final enum Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
.super Ljava/lang/Enum;
.source "LockAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SideEffectAnnotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field public static final enum LOCKINGFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field public static final enum MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field public static final enum PURE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field public static final enum RELEASESNOLOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field public static final enum SIDEEFFECTFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

.field static weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;


# instance fields
.field final annotation:Ljava/lang/String;

.field final annotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 413
    new-instance v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const-string v1, "@MayReleaseLocks"

    const-class v2, Lorg/checkerframework/checker/lock/qual/MayReleaseLocks;

    const-string v3, "MAYRELEASELOCKS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 414
    new-instance v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const-string v2, "@ReleasesNoLocks"

    const-class v3, Lorg/checkerframework/checker/lock/qual/ReleasesNoLocks;

    const-string v4, "RELEASESNOLOCKS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->RELEASESNOLOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 415
    new-instance v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const-string v3, "@LockingFree"

    const-class v4, Lorg/checkerframework/checker/lock/qual/LockingFree;

    const-string v5, "LOCKINGFREE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->LOCKINGFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 416
    new-instance v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const-string v4, "@SideEffectFree"

    const-class v5, Lorg/checkerframework/dataflow/qual/SideEffectFree;

    const-string v6, "SIDEEFFECTFREE"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->SIDEEFFECTFREE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 417
    new-instance v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    const-string v5, "@Pure"

    const-class v6, Lorg/checkerframework/dataflow/qual/Pure;

    const-string v7, "PURE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->PURE:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 412
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->$VALUES:[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 484
    const/4 v0, 0x0

    sput-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p3, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p4, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    iput-object p3, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->annotation:Ljava/lang/String;

    .line 423
    iput-object p4, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->annotationClass:Ljava/lang/Class;

    .line 424
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 412
    const-class v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .locals 1

    .line 412
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->$VALUES:[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v0}, [Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    return-object v0
.end method

.method public static weakest()Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    .locals 5

    .line 487
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    if-nez v0, :cond_2

    .line 488
    invoke-static {}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->values()[Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 489
    .local v3, "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    sget-object v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    if-nez v4, :cond_0

    .line 490
    sput-object v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 492
    :cond_0
    sget-object v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    invoke-virtual {v3, v4}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    sput-object v3, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 488
    .end local v3    # "sea":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_2
    sget-object v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->weakest:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    return-object v0
.end method


# virtual methods
.method public getAnnotationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->annotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getNameOfSideEffectAnnotation()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->annotation:Ljava/lang/String;

    return-object v0
.end method

.method isWeakerThan(Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;)Z
    .locals 3
    .param p1, "other"    # Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "weaker":Z
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    invoke-virtual {p1}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 469
    :pswitch_0
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 474
    :pswitch_1
    const/4 v0, 0x1

    .line 475
    goto :goto_0

    .line 459
    :pswitch_2
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 467
    goto :goto_0

    .line 463
    :pswitch_3
    const/4 v0, 0x1

    .line 464
    goto :goto_0

    .line 450
    :pswitch_4
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$2;->$SwitchMap$org$checkerframework$checker$lock$LockAnnotatedTypeFactory$SideEffectAnnotation:[I

    invoke-virtual {p0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 457
    goto :goto_0

    .line 453
    :pswitch_5
    const/4 v0, 0x1

    .line 454
    goto :goto_0

    .line 445
    :pswitch_6
    sget-object v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->MAYRELEASELOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    if-ne p0, v1, :cond_0

    .line 446
    const/4 v0, 0x1

    goto :goto_0

    .line 443
    :pswitch_7
    nop

    .line 481
    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
