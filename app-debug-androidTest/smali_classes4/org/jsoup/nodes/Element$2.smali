.class Lorg/jsoup/nodes/Element$2;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Element;->wholeText()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Element;

.field final synthetic val$accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jsoup/nodes/Element;

    .line 1112
    iput-object p1, p0, Lorg/jsoup/nodes/Element$2;->this$0:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/nodes/Element$2;->val$accum:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 1114
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 1115
    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 1116
    .local v0, "textNode":Lorg/jsoup/nodes/TextNode;
    iget-object v1, p0, Lorg/jsoup/nodes/Element$2;->val$accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .end local v0    # "textNode":Lorg/jsoup/nodes/TextNode;
    :cond_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 1121
    return-void
.end method
