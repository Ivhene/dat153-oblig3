.class final Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Accumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TO_IMMUTABLE_ENUM_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Enum<",
            "*>;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private set:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8LGQUVDlixQLSj94OpLifl8G4AU()Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;
    .locals 1

    new-instance v0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 142
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v6, v4, v5

    .line 144
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->TO_IMMUTABLE_ENUM_SET:Ljava/util/stream/Collector;

    .line 142
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 155
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->set:Ljava/util/EnumSet;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_0
    return-void
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;)Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<",
            "TE;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<TE;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 163
    return-object p1

    .line 164
    :cond_0
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->set:Ljava/util/EnumSet;

    if-nez v1, :cond_1

    .line 165
    return-object p0

    .line 167
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 168
    return-object p0
.end method

.method toImmutableSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;, "Lorg/checkerframework/com/google/common/collect/Sets$Accumulator<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$Accumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method
