.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method