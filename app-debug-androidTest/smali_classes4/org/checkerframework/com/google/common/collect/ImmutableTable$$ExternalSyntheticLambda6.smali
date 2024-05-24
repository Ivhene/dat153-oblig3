.class public final synthetic Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableTable$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableTable;->lambda$toImmutableTable$6(Ljava/util/function/BinaryOperator;Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;)Lorg/checkerframework/com/google/common/collect/ImmutableTable$CollectorState;

    move-result-object p1

    return-object p1
.end method
