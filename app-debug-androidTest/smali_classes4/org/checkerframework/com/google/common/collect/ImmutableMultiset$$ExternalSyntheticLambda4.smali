.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->lambda$toImmutableMultiset$3(Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object p1

    return-object p1
.end method