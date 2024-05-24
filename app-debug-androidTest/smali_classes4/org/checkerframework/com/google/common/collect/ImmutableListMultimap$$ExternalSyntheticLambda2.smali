.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
