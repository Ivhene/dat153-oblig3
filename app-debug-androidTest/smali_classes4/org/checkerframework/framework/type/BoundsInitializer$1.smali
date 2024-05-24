.class synthetic Lorg/checkerframework/framework/type/BoundsInitializer$1;
.super Ljava/lang/Object;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I

.field static final synthetic $SwitchMap$org$checkerframework$framework$type$BoundsInitializer$BoundPathNode$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 834
    invoke-static {}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->values()[Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$org$checkerframework$framework$type$BoundsInitializer$BoundPathNode$Kind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->UpperBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$org$checkerframework$framework$type$BoundsInitializer$BoundPathNode$Kind:[I

    sget-object v3, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->LowerBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 112
    :goto_1
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_2
    sget-object v3, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v3}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v2, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    return-void
.end method
