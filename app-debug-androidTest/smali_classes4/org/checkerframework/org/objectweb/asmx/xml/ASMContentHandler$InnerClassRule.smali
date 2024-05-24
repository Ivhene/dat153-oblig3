.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerClassRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 783
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 786
    const-string v0, "access"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;->getAccess(Ljava/lang/String;)I

    move-result v0

    .line 787
    .local v0, "access":I
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "name":Ljava/lang/String;
    const-string v2, "outerName"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "outerName":Ljava/lang/String;
    const-string v3, "innerName"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "innerName":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$InnerClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-object v4, v4, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v4, v1, v2, v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 791
    return-void
.end method
