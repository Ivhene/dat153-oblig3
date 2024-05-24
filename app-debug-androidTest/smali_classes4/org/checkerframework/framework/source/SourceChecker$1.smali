.class Lorg/checkerframework/framework/source/SourceChecker$1;
.super Ljava/lang/Thread;
.source "SourceChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/source/SourceChecker;->typeProcessingStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/source/SourceChecker;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/source/SourceChecker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/source/SourceChecker;

    .line 899
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceChecker$1;->this$0:Lorg/checkerframework/framework/source/SourceChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 902
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker$1;->this$0:Lorg/checkerframework/framework/source/SourceChecker;

    invoke-virtual {v0}, Lorg/checkerframework/framework/source/SourceChecker;->shutdownHook()V

    .line 903
    return-void
.end method
