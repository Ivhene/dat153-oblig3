.class public Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;
.super Ljava/lang/Object;
.source "StackMapFrame.java"


# instance fields
.field public label:Lorg/checkerframework/org/objectweb/asmx/Label;

.field public locals:Ljava/util/List;

.field public stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "locals"    # Ljava/util/List;
    .param p3, "stack"    # Ljava/util/List;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 71
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    .line 72
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Frame:L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->label:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " locals"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->locals:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/attrs/StackMapFrame;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
