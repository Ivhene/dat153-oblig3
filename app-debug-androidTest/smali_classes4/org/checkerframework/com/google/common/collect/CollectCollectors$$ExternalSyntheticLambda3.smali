.class public final synthetic Lorg/checkerframework/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method