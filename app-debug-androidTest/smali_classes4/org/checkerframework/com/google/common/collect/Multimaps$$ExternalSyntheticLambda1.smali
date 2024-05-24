.class public final synthetic Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda1;
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

    check-cast p1, Lorg/checkerframework/com/google/common/collect/Multimap;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimaps;->lambda$toMultimap$1(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object p1

    return-object p1
.end method
