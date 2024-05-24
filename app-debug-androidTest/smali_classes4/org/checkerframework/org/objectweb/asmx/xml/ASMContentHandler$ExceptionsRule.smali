.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExceptionsRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 853
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 14
    .param p1, "element"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 857
    .local v0, "vals":Ljava/util/Map;
    const-string v1, "access"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;->getAccess(Ljava/lang/String;)I

    move-result v1

    .line 858
    .local v1, "access":I
    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 859
    .local v8, "name":Ljava/lang/String;
    const-string v2, "desc"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 860
    .local v9, "desc":Ljava/lang/String;
    const-string v2, "signature"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 861
    .local v10, "signature":Ljava/lang/String;
    const-string v2, "exceptions"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    .line 862
    .local v11, "excs":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v12, v2

    check-cast v12, [Ljava/lang/String;

    .line 864
    .local v12, "exceptions":[Ljava/lang/String;
    iget-object v13, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ExceptionsRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v2, v13, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move v3, v1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 865
    return-void
.end method
