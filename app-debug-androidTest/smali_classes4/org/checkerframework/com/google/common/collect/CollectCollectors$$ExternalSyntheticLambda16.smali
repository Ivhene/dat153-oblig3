.class public final synthetic Lorg/checkerframework/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;->f$0:Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectCollectors;->lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0
.end method
