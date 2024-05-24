.class final Lnet/bytebuddy/jar/asm/CurrentFrame;
.super Lnet/bytebuddy/jar/asm/Frame;
.source "CurrentFrame.java"


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "owner"    # Lnet/bytebuddy/jar/asm/Label;

    .line 40
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    .line 41
    return-void
.end method


# virtual methods
.method execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "symbolArg"    # Lnet/bytebuddy/jar/asm/Symbol;
    .param p4, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 52
    new-instance v0, Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    .line 53
    .local v0, "successor":Lnet/bytebuddy/jar/asm/Frame;
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v0, v1}, Lnet/bytebuddy/jar/asm/CurrentFrame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    .line 54
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/CurrentFrame;->copyFrom(Lnet/bytebuddy/jar/asm/Frame;)V

    .line 55
    return-void
.end method
