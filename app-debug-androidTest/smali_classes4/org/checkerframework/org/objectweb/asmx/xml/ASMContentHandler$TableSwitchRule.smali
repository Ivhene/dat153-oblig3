.class Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableSwitchRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 872
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    .local v0, "vals":Ljava/util/Map;
    const-string v1, "min"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v1, "max"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v1, "dflt"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "labels"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 881
    return-void
.end method

.method public final end(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 885
    .local v0, "vals":Ljava/util/Map;
    const-string v1, "min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 886
    .local v1, "min":I
    const-string v2, "max"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 887
    .local v2, "max":I
    const-string v3, "dflt"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;->getLabel(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v3

    .line 888
    .local v3, "dflt":Lorg/checkerframework/org/objectweb/asmx/Label;
    const-string v4, "labels"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 889
    .local v4, "lbls":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/checkerframework/org/objectweb/asmx/Label;

    check-cast v5, [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 890
    .local v5, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TableSwitchRule;->getCodeVisitor()Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v6

    invoke-interface {v6, v1, v2, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 891
    return-void
.end method
