.class public final synthetic Lorg/checkerframework/com/google/common/collect/Maps$Accumulator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    return-void
.end method
