.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;
.super Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassRule"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Rule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
    .param p2, "x1"    # Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$1;

    .line 705
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;-><init>(Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;)V

    return-void
.end method


# virtual methods
.method public final begin(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .line 708
    const-string v0, "major"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 709
    .local v0, "major":I
    const-string v1, "minor"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 710
    .local v1, "minor":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    iget-boolean v4, v4, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->computeMax:Z

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(Z)V

    iput-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 711
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 712
    .local v2, "vals":Ljava/util/Map;
    new-instance v3, Ljava/lang/Integer;

    shl-int/lit8 v4, v1, 0x10

    or-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "version"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v3, "access"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v3, "name"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v3, "parent"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v3, "source"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v3, "signature"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "interfaces"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$ClassRule;->this$0:Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;

    invoke-virtual {v3, v2}, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;->push(Ljava/lang/Object;)V

    .line 721
    return-void
.end method
