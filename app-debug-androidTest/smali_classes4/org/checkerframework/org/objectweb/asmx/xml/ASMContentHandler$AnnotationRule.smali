.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnotationRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 1097
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 1097
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 1100
    const-string v0, "desc"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "desc":Ljava/lang/String;
    const-string v1, "visible"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1104
    .local v1, "visible":Z
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 1105
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v2, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    if-eqz v3, :cond_0

    .line 1106
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;

    invoke-interface {v4, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 1107
    :cond_0
    instance-of v3, v2, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    if-eqz v3, :cond_1

    .line 1108
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;

    invoke-interface {v4, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 1109
    :cond_1
    instance-of v3, v2, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    if-eqz v3, :cond_2

    .line 1110
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v4, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 1112
    :cond_2
    :goto_0
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$AnnotationRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 1116
    return-void
.end method
