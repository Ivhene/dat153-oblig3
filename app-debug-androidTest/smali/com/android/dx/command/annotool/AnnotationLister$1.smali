.class Lcom/android/dx/command/annotool/AnnotationLister$1;
.super Ljava/lang/Object;
.source "AnnotationLister.java"

# interfaces
.implements Lcom/android/dx/cf/direct/ClassPathOpener$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/command/annotool/AnnotationLister;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/command/annotool/AnnotationLister;


# direct methods
.method constructor <init>(Lcom/android/dx/command/annotool/AnnotationLister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/command/annotool/AnnotationLister;

    .line 64
    iput-object p1, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onProcessArchiveStart(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 130
    return-void
.end method

.method public processFileBytes(Ljava/lang/String;J[B)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "bytes"    # [B

    .line 67
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 71
    :cond_0
    new-instance v0, Lcom/android/dx/util/ByteArray;

    invoke-direct {v0, p4}, Lcom/android/dx/util/ByteArray;-><init>([B)V

    .line 72
    .local v0, "ba":Lcom/android/dx/util/ByteArray;
    new-instance v2, Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 75
    .local v2, "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    sget-object v3, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v2, v3}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 76
    invoke-virtual {v2}, Lcom/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v3

    .line 79
    .local v3, "attributes":Lcom/android/dx/cf/iface/AttributeList;
    nop

    .line 80
    invoke-virtual {v2}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "cfClassName":Ljava/lang/String;
    const-string v5, "package-info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "RuntimeVisibleAnnotations"

    const-string v7, "RuntimeInvisibleAnnotations"

    if-eqz v5, :cond_2

    .line 83
    invoke-interface {v3, v7}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    .line 86
    .local v5, "att":Lcom/android/dx/cf/iface/Attribute;
    :goto_0
    if-eqz v5, :cond_1

    .line 87
    move-object v7, v5

    check-cast v7, Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 88
    .local v7, "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    iget-object v8, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v8, v2, v7}, Lcom/android/dx/command/annotool/AnnotationLister;->access$000(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    .line 86
    .end local v7    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    invoke-interface {v3, v5}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v3, v6}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    .line 94
    :goto_1
    if-eqz v5, :cond_6

    .line 95
    move-object v6, v5

    check-cast v6, Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 96
    .local v6, "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    iget-object v7, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v7, v2, v6}, Lcom/android/dx/command/annotool/AnnotationLister;->access$000(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    .line 94
    .end local v6    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    invoke-interface {v3, v5}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    goto :goto_1

    .line 98
    .end local v5    # "att":Lcom/android/dx/cf/iface/Attribute;
    :cond_2
    iget-object v5, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v5, v4}, Lcom/android/dx/command/annotool/AnnotationLister;->access$100(Lcom/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    .line 99
    invoke-static {v5, v4}, Lcom/android/dx/command/annotool/AnnotationLister;->access$200(Lcom/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    .line 102
    :cond_3
    invoke-interface {v3, v7}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    .line 105
    .restart local v5    # "att":Lcom/android/dx/cf/iface/Attribute;
    :goto_2
    if-eqz v5, :cond_4

    .line 106
    move-object v7, v5

    check-cast v7, Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 107
    .restart local v7    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    iget-object v8, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v8, v2, v7}, Lcom/android/dx/command/annotool/AnnotationLister;->access$400(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    .line 105
    .end local v7    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    invoke-interface {v3, v5}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    goto :goto_2

    .line 110
    :cond_4
    invoke-interface {v3, v6}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    .line 113
    :goto_3
    if-eqz v5, :cond_6

    .line 114
    move-object v6, v5

    check-cast v6, Lcom/android/dx/cf/attrib/BaseAnnotations;

    .line 115
    .restart local v6    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    iget-object v7, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v7, v2, v6}, Lcom/android/dx/command/annotool/AnnotationLister;->access$400(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/cf/attrib/BaseAnnotations;)V

    .line 113
    .end local v6    # "ann":Lcom/android/dx/cf/attrib/BaseAnnotations;
    invoke-interface {v3, v5}, Lcom/android/dx/cf/iface/AttributeList;->findNext(Lcom/android/dx/cf/iface/Attribute;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v5

    goto :goto_3

    .line 100
    .end local v5    # "att":Lcom/android/dx/cf/iface/Attribute;
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/dx/command/annotool/AnnotationLister$1;->this$0:Lcom/android/dx/command/annotool/AnnotationLister;

    invoke-static {v5, v2}, Lcom/android/dx/command/annotool/AnnotationLister;->access$300(Lcom/android/dx/command/annotool/AnnotationLister;Lcom/android/dx/cf/direct/DirectClassFile;)V

    .line 119
    :cond_6
    return v1
.end method
