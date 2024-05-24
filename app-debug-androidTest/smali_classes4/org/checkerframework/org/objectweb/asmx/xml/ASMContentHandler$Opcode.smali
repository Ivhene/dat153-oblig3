.class final Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;
.super Ljava/lang/Object;
.source "ASMContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Opcode"
.end annotation


# instance fields
.field public opcode:I

.field public type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "type"    # I

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;->opcode:I

    .line 1210
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/xml/ASMContentHandler$Opcode;->type:I

    .line 1211
    return-void
.end method
