.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WithDrain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithoutActiveRecord;
    }
.end annotation


# instance fields
.field protected final appended:Lnet/bytebuddy/jar/asm/Label;

.field protected final original:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V
    .locals 7
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "record"    # Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .param p4, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p5, "requireFrames"    # Z
    .param p6, "expandFrames"    # Z

    .line 4576
    new-instance v1, Lnet/bytebuddy/utility/visitor/FramePaddingMethodVisitor;

    invoke-direct {v1, p1}, Lnet/bytebuddy/utility/visitor/FramePaddingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    .line 4577
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    .line 4578
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    .line 4579
    return-void
.end method


# virtual methods
.method protected abstract onAfterComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
.end method

.method protected onComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 3
    .param p1, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 4596
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 4597
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->onAfterComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V

    .line 4598
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 4583
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 4584
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 4585
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 4586
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 4590
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 4591
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 4592
    return-void
.end method
