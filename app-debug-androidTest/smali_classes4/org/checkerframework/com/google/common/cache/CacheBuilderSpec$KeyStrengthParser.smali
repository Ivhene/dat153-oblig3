.class Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStrengthParser"
.end annotation


# instance fields
.field private final strength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)V
    .locals 0
    .param p1, "strength"    # Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 370
    return-void
.end method


# virtual methods
.method public parse(Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spec"    # Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 374
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "key %s does not take values"

    invoke-static {v2, v3, p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 375
    iget-object v2, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "%s was already set to %s"

    iget-object v2, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1, p2, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;->strength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iput-object v0, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 377
    return-void
.end method
