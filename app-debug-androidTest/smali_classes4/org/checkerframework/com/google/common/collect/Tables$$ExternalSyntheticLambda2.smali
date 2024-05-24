.class public final synthetic Lorg/checkerframework/com/google/common/collect/Tables$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Tables$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, Lorg/checkerframework/com/google/common/collect/Table;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/Table;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Tables;->lambda$toTable$2(Ljava/util/function/BinaryOperator;Lorg/checkerframework/com/google/common/collect/Table;Lorg/checkerframework/com/google/common/collect/Table;)Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object p1

    return-object p1
.end method
