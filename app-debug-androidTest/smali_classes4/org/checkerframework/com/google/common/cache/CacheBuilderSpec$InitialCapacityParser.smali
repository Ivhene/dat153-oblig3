.class Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$InitialCapacityParser;
.super Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$IntegerParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitialCapacityParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$IntegerParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseInteger(Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;I)V
    .locals 3
    .param p1, "spec"    # Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    .param p2, "value"    # I

    .line 322
    iget-object v0, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "initial capacity was already set to "

    iget-object v2, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    .line 327
    return-void
.end method
