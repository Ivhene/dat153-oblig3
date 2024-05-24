.class public Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;
.super Lnet/bytebuddy/jar/asm/ModuleVisitor;
.source "ModuleRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "moduleVisitor"    # Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .param p3, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 67
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V

    .line 68
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 69
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1
    .param p1, "moduleVisitor"    # Lnet/bytebuddy/jar/asm/ModuleVisitor;
    .param p2, "remapper"    # Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 52
    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    .line 53
    return-void
.end method


# virtual methods
.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "remappedModules":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 90
    array-length v1, p3

    new-array v0, v1, [Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, p2, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "mainClass"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "packaze"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "modules"    # [Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "remappedModules":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 102
    array-length v1, p3

    new-array v0, v1, [Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, p2, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packaze"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "providers"    # [Ljava/lang/String;

    .line 117
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 118
    .local v0, "remappedProviders":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "version"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    .line 113
    return-void
.end method
