.class public final synthetic Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/BinaryOperator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->lambda$toImmutableEnumMap$3(Ljava/util/function/BinaryOperator;)Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;

    move-result-object v0

    return-object v0
.end method
