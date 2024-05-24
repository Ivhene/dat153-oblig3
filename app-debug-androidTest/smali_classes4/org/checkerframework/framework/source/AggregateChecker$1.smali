.class Lorg/checkerframework/framework/source/AggregateChecker$1;
.super Lorg/checkerframework/framework/source/SourceVisitor;
.source "AggregateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/source/AggregateChecker;->createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/source/SourceVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/source/AggregateChecker;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/source/AggregateChecker;Lorg/checkerframework/framework/source/SourceChecker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/source/AggregateChecker;
    .param p2, "checker"    # Lorg/checkerframework/framework/source/SourceChecker;

    .line 159
    iput-object p1, p0, Lorg/checkerframework/framework/source/AggregateChecker$1;->this$0:Lorg/checkerframework/framework/source/AggregateChecker;

    invoke-direct {p0, p2}, Lorg/checkerframework/framework/source/SourceVisitor;-><init>(Lorg/checkerframework/framework/source/SourceChecker;)V

    return-void
.end method
