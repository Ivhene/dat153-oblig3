.class public final synthetic Lorg/checkerframework/com/google/common/collect/Comparators$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/checkerframework/com/google/common/collect/TopKSelector;

    invoke-virtual {p1, p2}, Lorg/checkerframework/com/google/common/collect/TopKSelector;->offer(Ljava/lang/Object;)V

    return-void
.end method