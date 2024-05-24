.class public Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor$TypeConstantDissolvingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeConstantAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TypeConstantDissolvingMethodVisitor"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "(Ljava/lang/String;)Ljava/lang/Class;"

.field private static final FOR_NAME:Ljava/lang/String; = "forName"

.field private static final JAVA_LANG_CLASS:Ljava/lang/String; = "java/lang/Class"


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 137
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 138
    return-void
.end method


# virtual methods
.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Type;

    .line 145
    .local v0, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 149
    const/16 v3, 0xb8

    const-string v4, "java/lang/Class"

    const-string v5, "forName"

    const-string v6, "(Ljava/lang/String;)Ljava/lang/Class;"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-super/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    return-void

    .line 153
    .end local v0    # "type":Lnet/bytebuddy/jar/asm/Type;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 154
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
