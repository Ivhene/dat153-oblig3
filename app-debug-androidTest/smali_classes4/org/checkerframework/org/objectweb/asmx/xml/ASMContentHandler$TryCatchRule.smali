.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TryCatchRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 961
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 964
    const-string v0, "start"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;->getLabel(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v0

    .line 965
    .local v0, "start":Lorg/checkerframework/org/objectweb/asmx/Label;
    const-string v1, "end"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;->getLabel(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v1

    .line 966
    .local v1, "end":Lorg/checkerframework/org/objectweb/asmx/Label;
    const-string v2, "handler"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;->getLabel(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v2

    .line 967
    .local v2, "handler":Lorg/checkerframework/org/objectweb/asmx/Label;
    const-string v3, "type"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$TryCatchRule;->getCodeVisitor()Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V

    .line 969
    return-void
.end method
