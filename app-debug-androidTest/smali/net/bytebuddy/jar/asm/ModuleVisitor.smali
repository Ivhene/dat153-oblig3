.class public abstract Lnet/bytebuddy/jar/asm/ModuleVisitor;
.super Ljava/lang/Object;
.source "ModuleVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V
    .locals 3
    .param p1, "api"    # I
    .param p2, "moduleVisitor"    # Lnet/bytebuddy/jar/asm/ModuleVisitor;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported api "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 79
    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 81
    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->api:I

    .line 82
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    .line 83
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 181
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitEnd()V

    .line 184
    :cond_0
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "mainClass"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "providers"    # [Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
