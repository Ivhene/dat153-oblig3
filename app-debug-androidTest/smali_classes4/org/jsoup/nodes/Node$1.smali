.class Lorg/jsoup/nodes/Node$1;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Node;->setBaseUri(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Node;

.field final synthetic val$baseUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jsoup/nodes/Node;

    .line 154
    iput-object p1, p0, Lorg/jsoup/nodes/Node$1;->this$0:Lorg/jsoup/nodes/Node;

    iput-object p2, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 156
    iget-object v0, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->doSetBaseUri(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 160
    return-void
.end method
