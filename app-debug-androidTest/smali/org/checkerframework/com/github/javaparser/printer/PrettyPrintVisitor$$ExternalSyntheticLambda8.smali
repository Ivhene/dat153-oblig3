.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic f$1:Ljava/lang/Void;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Void;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Void;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, p1

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$9$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    return-void
.end method
