.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FieldRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 798
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 12
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 801
    const-string v0, "access"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;->getAccess(Ljava/lang/String;)I

    move-result v0

    .line 802
    .local v0, "access":I
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 803
    .local v7, "name":Ljava/lang/String;
    const-string v1, "signature"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, "signature":Ljava/lang/String;
    const-string v1, "desc"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    .local v9, "desc":Ljava/lang/String;
    const-string v1, "value"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 806
    .local v10, "value":Ljava/lang/Object;
    iget-object v11, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v1, v11, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    move v2, v0

    move-object v3, v7

    move-object v4, v9

    move-object v5, v8

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 807
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$FieldRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitEnd()V

    .line 811
    return-void
.end method
