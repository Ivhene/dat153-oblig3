.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/PositionUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->lambda$sortByBeginPosition$0(ZLorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)I

    move-result p1

    return p1
.end method
