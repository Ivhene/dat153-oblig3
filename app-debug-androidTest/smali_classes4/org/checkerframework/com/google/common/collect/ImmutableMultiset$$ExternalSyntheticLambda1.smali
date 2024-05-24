.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    return-object v0
.end method
