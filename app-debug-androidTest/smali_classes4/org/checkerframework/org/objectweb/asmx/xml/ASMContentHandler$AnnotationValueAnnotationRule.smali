.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnotationValueAnnotationRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 1161
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "nm"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 1164
    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "name":Ljava/lang/String;
    const-string v1, "desc"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "desc":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v3, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 1167
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationValueAnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 1171
    return-void
.end method
