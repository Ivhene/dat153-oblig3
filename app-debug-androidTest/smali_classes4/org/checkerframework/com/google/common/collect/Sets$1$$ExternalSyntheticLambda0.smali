.class public final synthetic Lorg/checkerframework/com/google/common/collect/Sets$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Sets$1;->lambda$stream$0(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
