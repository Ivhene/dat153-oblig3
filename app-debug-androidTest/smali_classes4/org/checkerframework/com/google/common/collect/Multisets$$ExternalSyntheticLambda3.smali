.class public final synthetic Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/google/common/collect/Multiset;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/google/common/collect/Multiset;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda3;->f$0:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method
