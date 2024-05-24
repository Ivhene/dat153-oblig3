.class Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher$1;
.super Ljava/io/OutputStream;
.source "CFGVisualizeLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;->generateMethodCFG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;

    .line 187
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher$1;->this$0:Lorg/checkerframework/dataflow/cfg/CFGVisualizeLauncher;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    return-void
.end method
