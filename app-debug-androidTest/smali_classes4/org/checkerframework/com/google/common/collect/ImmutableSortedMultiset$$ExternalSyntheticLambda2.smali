.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/ToIntFunction;

    check-cast p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {v0, v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->lambda$toImmutableSortedMultiset$2(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)V

    return-void
.end method
