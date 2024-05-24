.class Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MemberSubstitution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalVariableTracingMethodVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0
    .param p2, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 2419
    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;->this$0:Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;

    .line 2420
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 2421
    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/MemberSubstitution$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;
    .param p2, "x1"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p3, "x2"    # Lnet/bytebuddy/asm/MemberSubstitution$1;

    .line 2412
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;-><init>(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitVarInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .line 2426
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2434
    :pswitch_0
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;->this$0:Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;

    invoke-static {v0}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->access$100(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;)I

    move-result v1

    add-int/lit8 v2, p2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->access$102(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;I)I

    goto :goto_0

    .line 2430
    :pswitch_1
    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor$LocalVariableTracingMethodVisitor;->this$0:Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;

    invoke-static {v0}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->access$100(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;->access$102(Lnet/bytebuddy/asm/MemberSubstitution$SubstitutingMethodVisitor;I)I

    .line 2431
    nop

    .line 2437
    :goto_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2438
    return-void

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
