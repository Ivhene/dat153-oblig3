.class Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mergeFunction:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<TK;TV;>;"
    .local p1, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    .line 180
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    .line 181
    return-void
.end method


# virtual methods
.method combine(Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;)Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<TK;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 192
    return-object p1

    .line 193
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 194
    return-object p0

    .line 196
    :cond_1
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 197
    return-object p0
.end method

.method put(Ljava/lang/Enum;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/EnumMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method toImmutableMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Maps$Accumulator<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0
.end method
